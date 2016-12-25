require 'test_helper'

class EvaluationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evaluation = evaluations(:one)
  end

  test "should get index" do
    get evaluations_url
    assert_response :success
  end

  test "should get new" do
    get new_evaluation_url
    assert_response :success
  end

  test "should create evaluation" do
    assert_difference('Evaluation.count') do
      post evaluations_url, params: { evaluation: { assessment: @evaluation.assessment, bodypart: @evaluation.bodypart, crutches: @evaluation.crutches, date: @evaluation.date, datetime: @evaluation.datetime, email: @evaluation.email, erreferral: @evaluation.erreferral, event: @evaluation.event, functionaltesting: @evaluation.functionaltesting, hospitalname: @evaluation.hospitalname, instruction: @evaluation.instruction, left: @evaluation.left, mdreferral: @evaluation.mdreferral, mmt: @evaluation.mmt, name: @evaluation.name, neurological: @evaluation.neurological, notifiedparent: @evaluation.notifiedparent, palpation: @evaluation.palpation, parent: @evaluation.parent, plan: @evaluation.plan, rice: @evaluation.rice, right: @evaluation.right, rom: @evaluation.rom, screen: @evaluation.screen, specialtests: @evaluation.specialtests, subjective: @evaluation.subjective, taping: @evaluation.taping, team: @evaluation.team, time: @evaluation.time, visual: @evaluation.visual, whomnotified: @evaluation.whomnotified } }
    end

    assert_redirected_to evaluation_url(Evaluation.last)
  end

  test "should show evaluation" do
    get evaluation_url(@evaluation)
    assert_response :success
  end

  test "should get edit" do
    get edit_evaluation_url(@evaluation)
    assert_response :success
  end

  test "should update evaluation" do
    patch evaluation_url(@evaluation), params: { evaluation: { assessment: @evaluation.assessment, bodypart: @evaluation.bodypart, crutches: @evaluation.crutches, date: @evaluation.date, datetime: @evaluation.datetime, email: @evaluation.email, erreferral: @evaluation.erreferral, event: @evaluation.event, functionaltesting: @evaluation.functionaltesting, hospitalname: @evaluation.hospitalname, instruction: @evaluation.instruction, left: @evaluation.left, mdreferral: @evaluation.mdreferral, mmt: @evaluation.mmt, name: @evaluation.name, neurological: @evaluation.neurological, notifiedparent: @evaluation.notifiedparent, palpation: @evaluation.palpation, parent: @evaluation.parent, plan: @evaluation.plan, rice: @evaluation.rice, right: @evaluation.right, rom: @evaluation.rom, screen: @evaluation.screen, specialtests: @evaluation.specialtests, subjective: @evaluation.subjective, taping: @evaluation.taping, team: @evaluation.team, time: @evaluation.time, visual: @evaluation.visual, whomnotified: @evaluation.whomnotified } }
    assert_redirected_to evaluation_url(@evaluation)
  end

  test "should destroy evaluation" do
    assert_difference('Evaluation.count', -1) do
      delete evaluation_url(@evaluation)
    end

    assert_redirected_to evaluations_url
  end
end
